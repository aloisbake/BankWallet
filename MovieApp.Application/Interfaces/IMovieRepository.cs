using System;
using System.Collections.Generic;
using System.Text;
using MovieApp.Core.Entities;

namespace MovieApp.Application.Interfaces
{
    public interface IMovieRepository : IGenericRepository<Movie>
    {
    }
}
