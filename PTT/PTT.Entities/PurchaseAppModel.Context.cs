﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PTT.Entities
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PurchaseAppDbEntities : DbContext
    {
        public PurchaseAppDbEntities()
            : base("name=PurchaseAppDbEntities")
        {
        }

        public PurchaseAppDbEntities(string connectionString)
            : base(connectionString)
        {
                
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AspNetUser> AspNetUsers { get; set; }
        public virtual DbSet<Budget> Budgets { get; set; }
        public virtual DbSet<Category> Categories { get; set; }
        public virtual DbSet<Importance> Importances { get; set; }
        public virtual DbSet<Place> Places { get; set; }
        public virtual DbSet<Purchase> Purchases { get; set; }
    }
}
