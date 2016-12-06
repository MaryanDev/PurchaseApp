using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PTT.Entities.DTOs
{
    public class SimplePurchaseInfoDto
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Category { get; set; }
        public decimal Price { get; set; }
        public string Date { get; set; }
    }
}
