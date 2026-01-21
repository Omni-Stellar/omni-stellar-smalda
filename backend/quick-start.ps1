# Quick Start Script for omni-stellar-omni-stellar-smalda Backend

Write-Host "🚀 omni-stellar-omni-stellar-smalda Backend Quick Start" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green
Write-Host ""

# Check if .env exists
if (-Not (Test-Path ".env")) {
    Write-Host "⚠️  .env file not found. Creating from .env.example..." -ForegroundColor Yellow
    Copy-Item ".env.example" ".env"
    Write-Host "✅ .env file created. Please update with your configuration." -ForegroundColor Green
    Write-Host ""
    Write-Host "📝 Required configurations:" -ForegroundColor Cyan
    Write-Host "  - Database credentials (DATABASE_*)" -ForegroundColor White
    Write-Host "  - JWT secrets (JWT_SECRET, JWT_REFRESH_SECRET)" -ForegroundColor White
    Write-Host "  - Email configuration (MAIL_*)" -ForegroundColor White
    Write-Host "  - Optional: OAuth credentials (GOOGLE_*, GITHUB_*)" -ForegroundColor White
    Write-Host ""
    Write-Host "Press any key to continue after updating .env file..."
    $null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
}

Write-Host ""
Write-Host "📦 Installing dependencies..." -ForegroundColor Cyan
npm install

Write-Host ""
Write-Host "🗄️  Database Setup" -ForegroundColor Cyan
Write-Host "Make sure PostgreSQL is running and the database 'omni-stellar-smalda_db' exists." -ForegroundColor Yellow
Write-Host ""
Write-Host "To create the database, run:" -ForegroundColor White
Write-Host "  psql -U postgres -c 'CREATE DATABASE omni-stellar-smalda_db;'" -ForegroundColor Gray
Write-Host ""

$response = Read-Host "Is your database ready? (y/n)"
if ($response -ne "y") {
    Write-Host "Please set up your database first, then run this script again." -ForegroundColor Red
    exit
}

Write-Host ""
Write-Host "🎉 Setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "To start the development server:" -ForegroundColor Cyan
Write-Host "  npm run start:dev" -ForegroundColor White
Write-Host ""
Write-Host "Then visit:" -ForegroundColor Cyan
Write-Host "  - API: http://localhost:3000/api" -ForegroundColor White
Write-Host "  - Swagger Docs: http://localhost:3000/api/docs" -ForegroundColor White
Write-Host ""
Write-Host "📚 For more information, see IMPLEMENTATION_GUIDE.md" -ForegroundColor Cyan
