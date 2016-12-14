using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PTT.Entities.DTOs
{
    public class FullPurchaseInfoDto
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Category { get; set; }
        public decimal Price { get; set; }
        public string Date { get; set; }
        public string Importance { get; set; }
        public string Description { get; set; }
    }
}
