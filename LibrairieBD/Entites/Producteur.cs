﻿using System;
using System.Collections.Generic;
using System.Text;

namespace LibrairieBD.Entites
{
    class Producteur
    {
        [Id]
        [ColumnMapping]
        public int NoProducteur { get; set; }
        [ColumnMapping]
        public string Nom { get; set; }
    }
}