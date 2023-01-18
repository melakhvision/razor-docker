FROM node:16-alpine as Tailwind
WORKDIR /nodefile

COPY package.json .
RUN npm install

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build-env
WORKDIR /app

COPY --from=Tailwind ./nodefile .
COPY . .

# Restore as distinct layers
RUN dotnet restore

# RUN dotnet publish -c Release -o out

ENTRYPOINT ["dotnet", "run"]
# Build runtime image
# FROM mcr.microsoft.com/dotnet/aspnet:6.0
# WORKDIR /app
# COPY --from=build-env /app/out .
# ENTRYPOINT ["dotnet", "RazorPagesMovie.dll"]