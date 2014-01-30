using System;
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
                _subtotal = value;
            }
        }

        // Konstruktor
        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }

        // Metod som beräknar rabatten och den totala summan att betala
        public void Calculate(double subtotal)
        {
            SubTotal = subtotal;

            if (SubTotal < 500)
            {
                DiscountRate = 0;
            }
            else if (SubTotal < 1000)
            {
                DiscountRate = 0.05;
            }

            else if (SubTotal < 5000)
            {
                DiscountRate = 0.10;
            }
            else 
            {
                DiscountRate = 0.15;
            }

            MoneyOff = SubTotal * DiscountRate;
            Total = SubTotal - MoneyOff;
        }


    }
}