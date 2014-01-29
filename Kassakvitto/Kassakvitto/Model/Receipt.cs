﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto.Model
{
    public class Receipt
    {
        // Privat fält
        private double _subtotal;

        // Egenskaper
        public double DiscountRate { get; private set; }
        public double MoneyOff { get; private set; }
        public double Total { get; private set; }

        public double SubTotal
        {
            get
            {
                return _subtotal;
            }
            private set
            {
                if (value <= 0)
                {
                    throw new ArgumentOutOfRangeException();
                }
                value = _subtotal;
            }
        }

        // Konstruktor
        public Receipt(double subtotal)
        {
            
        }
    }
}