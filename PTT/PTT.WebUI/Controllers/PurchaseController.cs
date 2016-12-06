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

namespace PTT.WebUI.Controllers
{
    [Authorize]
    public class PurchaseController : Controller
    {
        private IPurchaseRepository _purchaseRepo;
        private Func<Purchase, SimplePurchaseInfoDto> AsSimplePurchaseDto = pur => new SimplePurchaseInfoDto
        {
            Id = pur.Id,
            Title = pur.Title,
            Price = pur.Price,
            Date = pur.Date,
            Category = pur.Category.Title
        };

        public PurchaseController(IPurchaseRepository purchaseRepo)
        {
            _purchaseRepo = purchaseRepo;
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

        protected int pageSize = 10;
        protected int GetCountOfPages(int allPages, int size)
        {
            var pages = allPages / size;
            var count = allPages % size == 0 ? pages : ++pages;
            return count;
        }
    }
}