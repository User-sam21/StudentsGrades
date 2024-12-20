<<<<<<< HEAD
# Étape 1 : Build de l'application
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src

COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o /app

# Étape 2 : Image finale
FROM mcr.microsoft.com/dotnet/runtime:6.0
WORKDIR /app
COPY --from=build /app .

ENTRYPOINT ["dotnet", "StudentGrades.dll"]
<<<<<<< HEAD
=======
 
