using PTT.Repositories.Abstract.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.AspNet.Identity;
using PTT.Entities;
using PTT.WebUI.Models;
using PTT.Entities.DTOs;
using System.Net;

namespace PTT.WebUI.Controllers
{
    [Authorize]
    public class PurchaseController : Controller
    {
        private IPurchaseRepository _purchaseRepo;
        private IImportanceRepository _importanceRepo;
        ICategoryRepository _categoryRepo;
        private Func<Purchase, SimplePurchaseInfoDto> AsSimplePurchaseDto = pur => new SimplePurchaseInfoDto
        {
            Id = pur.Id,
            Title = pur.Title,
            Price = pur.Price,
            Date = pur.Date,
            Category = pur.Category.Title
        };

        public PurchaseController(IPurchaseRepository purchaseRepo, IImportanceRepository importanceRepo, ICategoryRepository categoryRepo)
        {
            _purchaseRepo = purchaseRepo;
            _importanceRepo = importanceRepo;
            _categoryRepo = categoryRepo;
        }
        // GET: Purchase
        public JsonResult GetPurchases(int page = 1)
        {
            Func<Purchase, bool> condition = pur => pur.UserId == User.Identity.GetUserId<int>() && !pur.IsPlanned;
            var result = _purchaseRepo
                .Get(condition, p => p.Category)
                .Select(AsSimplePurchaseDto)
                .Skip((page - 1) * pageSize)
                .Take(pageSize);

            var count = GetCountOfPages(_purchaseRepo.Get(condition, p => p.Category).Count(), pageSize);
            return Json(new { purchases = result, allPages = count, currentPage = page }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult GetPurchases(PurchaseSearchModel searchModel, int page = 1)
        {
            Func<Purchase, bool> condition = pur => pur.UserId == User.Identity.GetUserId<int>() && !pur.IsPlanned
                    && pur.Category.Title.ToLower().Contains(searchModel.Category.Trim().ToLower())
                    && pur.Title.ToLower().Contains(searchModel.Title.ToLower())
                    && (pur.Price >= searchModel.MinPrice && pur.Price <= searchModel.MaxPrice);

            var result = _purchaseRepo
                .Get(condition, p => p.Category)
                .Select(AsSimplePurchaseDto)
                .Skip((page - 1) * pageSize)
                .Take(pageSize);

            var count = GetCountOfPages(_purchaseRepo.Get(condition, p => p.Category).Count(), pageSize);
            return Json(new { purchases = result, allPages = count, currentPage = page }, JsonRequestBehavior.AllowGet);
        }

        [HttpGet]
        public JsonResult GetImportances()
        {
            var importances = _importanceRepo
                .Get()
                .Select(i => i.ImpTitle);
            return Json(importances, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public HttpStatusCodeResult AddPurchase(FullPurchaseInfoDto purchaseToAdd)
        {
            var importanceId = _importanceRepo.GetSingle(i => i.ImpTitle == purchaseToAdd.Importance.Trim()).Id;
            var categoryId = _categoryRepo.GetSingle(c => c.Title == purchaseToAdd.Category).Id;

            _purchaseRepo.Insert(new Purchase
            {
                Title = purchaseToAdd.Title,
                Description = purchaseToAdd.Description,
                Price = purchaseToAdd.Price,
                Date = purchaseToAdd.Date,
                ImportanceId = importanceId,
                CategoryId = categoryId,
                UserId = User.Identity.GetUserId<int>(),
                IsPlanned = false
            });

            return new HttpStatusCodeResult(HttpStatusCode.Created);
        }

        [HttpGet]
        public JsonResult GetFullPurchaseInfo(int purchaseId)
        {
            var purchaseInfo = _purchaseRepo
                .Get(pur => pur.Id == purchaseId, p => p.Importance, p => p.Category, p => p.Place)
                .Select(info => new FullPurchaseInfoDto
                {
                    Id = info.Id,
                    Title = info.Title,
                    Description = info.Description,
                    Date = info.Date,
                    Category = info.Category.Title,
                    Importance = info.Importance.ImpTitle,
                    Price = info.Price
                })
                .SingleOrDefault();

            return Json(purchaseInfo, JsonRequestBehavior.AllowGet);
                
        }

        protected int pageSize = 10;
        protected int GetCountOfPages(int allPages, int size)
        {
            var pages = allPages / size;
            var count = allPages % size == 0 ? pages : ++pages;
            return count;
        }
    }
}