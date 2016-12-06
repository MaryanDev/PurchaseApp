using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PTT.WebUI.Models
{
    public class PurchaseSearchModel
    {
        private string _category = "";
        private string _title = "";
        private decimal? _minPrice = 0;
        private decimal? _maxPrice = int.MaxValue;

        public string Category
        {
            get
            {
                return _category;
            }
            set
            {
                _category = value == null || value == "All" ? "" : value;
            }
        }

        public string Title
        {
            get
            {
                return _title;
            }
            set
            {
                _title = value == null ? "" : value;
            }
        }

        public decimal? MinPrice
        {
            get
            {
                return _minPrice;
            }
            set
            {
                _minPrice = value == null ? 0 : value;
            }
        }

        public decimal? MaxPrice
        {
            get
            {
                return _maxPrice;
            }
            set
            {
                _maxPrice = value == null ? int.MaxValue : value;
            }
        }
    }
}