SELECT *
FROM PortfolioProject..CovidDeaths
order by 3,4

--SELECT *
--FROM PortfolioProject..CovidVaccines
--order by 3,4

--Select the data I will be using

Select Location, date, total_cases, new_cases, total_deaths, population 
FROM PortfolioProject..CovidDeaths
Order by 1,2

--Looking at New cases vs total deaths ( Below will be calculated the percentage of people that die frome getting Covid)


Select Location, date, (new_cases/ total_deaths)*100 as DeathPercentage
FROM PortfolioProject..CovidDeaths
Order by 1,2

--Below I will be looking at the total population vs vaccination


SELECT * dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
FROM PortfolioProject..CovidDeaths dea
JOIN PortfolioProject..CovidVaccines vac
	on dea.location = vac.location
	and dea.date = vac.date
WHERE dea.continent is not null
