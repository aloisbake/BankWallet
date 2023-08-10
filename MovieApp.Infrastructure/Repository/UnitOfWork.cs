using MovieApp.Application.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;

namespace MovieApp.Infrastructure.Repository
{
    public class UnitOfWork : IUnitOfWork
    {

        public UnitOfWork(IMovieRepository movieRepository)
        {
            Movies = movieRepository;
        }
        public IMovieRepository Movies { get; }
    }
}
