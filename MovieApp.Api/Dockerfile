#See https://aka.ms/customizecontainer to learn how to customize your debug container and how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["MovieApp.Api/MovieApp.Api.csproj", "MovieApp.Api/"]
COPY ["MovieApp.Infrastructure/MovieApp.Infrastructure.csproj", "MovieApp.Infrastructure/"]
COPY ["MovieApp.Application/MovieApp.Application.csproj", "MovieApp.Application/"]
COPY ["MovieApp.Core/MovieApp.Core.csproj", "MovieApp.Core/"]
RUN dotnet restore "MovieApp.Api/MovieApp.Api.csproj"
COPY . .
WORKDIR "/src/MovieApp.Api"
RUN dotnet build "MovieApp.Api.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "MovieApp.Api.csproj" -c Release -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "MovieApp.Api.dll"]