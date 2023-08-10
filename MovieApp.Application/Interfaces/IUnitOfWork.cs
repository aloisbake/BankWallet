﻿using System;
using System.Collections.Generic;
using System.Text;

namespace MovieApp.Application.Interfaces
{
    public interface IUnitOfWork
    {
        IMovieRepository Movies { get; }
    }
}
