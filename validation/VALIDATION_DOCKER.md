# Containerized Validation Suite
## Docker-based Testing for Penguin Pragmatic Patterns

This directory contains Docker-based validation tools that replicate the GitHub Actions validation workflow locally.

## Quick Start

### Prerequisites
- Docker Engine 20.10+
- Docker Compose 1.29+
- At least 4GB available RAM

### Run All Validations
```bash
cd validation
docker-compose -f docker-compose.validation.yml up --build
```

## Individual Test Suites

### 1. Linting (CSS, JS, Markdown)
```bash
docker-compose -f docker-compose.validation.yml run --rm lint
```

**What it checks:**
- CSS/SCSS syntax and style (stylelint)
- JavaScript code quality (eslint)
- Markdown formatting (remark)
- Spell checking (cspell)

**Expected output:**
```
✔ lint:css completed successfully
✔ lint:js completed successfully  
✔ lint:md completed successfully
```

### 2. Hugo Build Test
```bash
docker-compose -f docker-compose.validation.yml run --rm hugo-test
```

**What it checks:**
- Hugo site builds without errors
- No TOML parsing errors
- No broken internal/external links
- All required resources exist

**Expected output:**
```
Total in 1234 ms
Error count: 0
```

### 3. Hugo Server (For Manual Testing)
```bash
docker-compose -f docker-compose.validation.yml up hugo-server
```

Access the site at: http://localhost:1313

**Use case:** Manual testing, visual inspection, browser debugging

### 4. Smoke Tests (Cypress E2E)
```bash
docker-compose -f docker-compose.validation.yml up hugo-server -d
docker-compose -f docker-compose.validation.yml run --rm smoke
```

**What it tests:**
- Main page loads
- Navigation functionality
- Footer presence
- Internal link integrity
- Pattern reference sections

### 5. Lighthouse Performance Testing
```bash
docker-compose -f docker-compose.validation.yml up hugo-server -d
docker-compose -f docker-compose.validation.yml run --rm lighthouse
```

**What it measures:**
- Performance score
- Accessibility score
- Best practices score
- SEO score
- Core Web Vitals (LCP, FID, CLS)

**Reports generated:**
- `reports/lighthouse-desktop.report.html`
- `reports/lighthouse-desktop.report.json`

## Complete Workflow (CI/CD Equivalent)

```bash
cd validation

# Step 1: Lint everything
docker-compose -f docker-compose.validation.yml run --rm lint

# Step 2: Test Hugo build
docker-compose -f docker-compose.validation.yml run --rm hugo-test

# Step 3: Start Hugo server in background
docker-compose -f docker-compose.validation.yml up -d hugo-server

# Step 4: Wait for server to be ready
docker-compose -f docker-compose.validation.yml run --rm smoke bash -c "npx wait-on http://hugo-server:1313"

# Step 5: Run Cypress tests
docker-compose -f docker-compose.validation.yml run --rm smoke

# Step 6: Run Lighthouse
docker-compose -f docker-compose.validation.yml run --rm lighthouse

# Cleanup
docker-compose -f docker-compose.validation.yml down
```

## Automated Script

For convenience, use the provided script:

```bash
cd validation
bash scripts/run-validation-docker.sh
```

## Troubleshooting

### Issue: Port 1313 already in use
**Solution:**
```bash
# Stop any running Hugo servers
docker-compose -f docker-compose.validation.yml down
# Or kill the process using port 1313
lsof -ti:1313 | xargs kill -9
```

### Issue: Build fails with "no space left on device"
**Solution:**
```bash
# Clean up Docker resources
docker system prune -a --volumes
```

### Issue: Hugo version mismatch
**Check container Hugo version:**
```bash
docker-compose -f docker-compose.validation.yml run --rm hugo-test hugo version
```

**Expected:** Hugo v0.152.2+extended

### Issue: Node modules not found
**Rebuild with no cache:**
```bash
docker-compose -f docker-compose.validation.yml build --no-cache
```

### Issue: Tests timeout waiting for server
**Check server health:**
```bash
docker-compose -f docker-compose.validation.yml up hugo-server
# In another terminal:
curl http://localhost:1313
```

## File Structure

```
validation/
├── Dockerfile.validation              # Multi-stage build with Hugo + Node
├── docker-compose.validation.yml      # Service orchestration
├── VALIDATION_DOCKER.md              # This file
├── scripts/
│   ├── run-validation-docker.sh      # Automated full validation
│   ├── run-hugo-tests.sh
│   ├── run-lints.sh
│   └── run-smoke-tests.sh
├── cypress/                           # E2E test specs
├── reports/                           # Generated validation reports
└── package.json                       # Node dependencies
```

## Environment Variables

Override defaults by setting environment variables:

```bash
# Use custom base URL
BASE_URL=http://custom-url:8080 docker-compose -f docker-compose.validation.yml run --rm lighthouse

# Use custom port
PORT=8080 docker-compose -f docker-compose.validation.yml up hugo-server
```

## Performance Considerations

### Resource Usage
- **Memory:** ~2GB per container
- **CPU:** 1-2 cores recommended
- **Disk:** ~500MB for images + reports

### Speed Optimization
```bash
# Use BuildKit for faster builds
DOCKER_BUILDKIT=1 docker-compose -f docker-compose.validation.yml build

# Parallel service execution
docker-compose -f docker-compose.validation.yml up --build --scale lint=1 --scale hugo-test=1
```

## CI/CD Integration

This containerized validation replicates the GitHub Actions workflow defined in:
- `.github/workflows/validation.yml`

**Matching versions:**
- Hugo: 0.152.2 extended
- Node.js: 25.1.0
- npm packages: See `package.json`

## Comparison: Docker vs GitHub Actions

| Aspect | Docker | GitHub Actions |
|--------|--------|----------------|
| Hugo Version | 0.152.2 | 0.152.2 ✓ |
| Node Version | 25.1.0 | 25.1.0 ✓ |
| Lint Checks | ✓ | ✓ |
| Hugo Build Test | ✓ | ✓ |
| Smoke Tests | ✓ | ✓ |
| Lighthouse | ✓ | ✓ |
| Artifact Upload | Manual | Automatic |
| Parallel Execution | Limited | Native |

## Reports & Artifacts

After running validations, find reports in:
```
validation/reports/
├── npm-lint-latest.log           # Linting results
├── hugo-server.log               # Server logs
├── lighthouse-desktop.report.html # Performance report
├── lighthouse-desktop.report.json # Performance data
└── cypress/
    ├── screenshots/              # Failed test screenshots
    └── videos/                   # Test execution videos
```

## Advanced Usage

### Custom Hugo Build Arguments
```bash
docker-compose -f docker-compose.validation.yml run --rm hugo-test \
  bash -c "hugo --gc --minify --buildDrafts=true --environment=staging"
```

### Debug Mode
```bash
# Run container interactively
docker-compose -f docker-compose.validation.yml run --rm --entrypoint bash hugo-test

# Inside container:
hugo version
npm --version
ls -la /workspace
```

### Watch Mode (Development)
```bash
# Start Hugo server with live reload
docker-compose -f docker-compose.validation.yml run --rm -p 1313:1313 hugo-server \
  hugo server --bind 0.0.0.0 --port 1313 --disableFastRender
```

## Security Considerations

- Containers run as non-root where possible
- No sensitive data in images
- Volumes mounted read-only where applicable
- Network isolation via Docker bridge

## Maintenance

### Update Hugo Version
1. Edit `Dockerfile.validation`: Change `ARG HUGO_VERSION=0.152.2`
2. Rebuild: `docker-compose -f docker-compose.validation.yml build --no-cache`
3. Verify: `docker-compose -f docker-compose.validation.yml run --rm hugo-test hugo version`

### Update Node Dependencies
```bash
cd validation
npm update
docker-compose -f docker-compose.validation.yml build --no-cache
```

### Clean Up Old Images
```bash
docker images | grep validation | awk '{print $3}' | xargs docker rmi -f
```

## Support

**Issues:** Create GitHub issue with:
- Docker version: `docker --version`
- Docker Compose version: `docker-compose --version`
- Error logs from validation output

**Documentation:** See also:
- [QUICKSTART.md](QUICKSTART.md) - Non-Docker setup
- [README.md](README.md) - Detailed validation suite docs
- [.github/workflows/validation.yml](../.github/workflows/validation.yml) - CI workflow

---

**Last Updated:** 2025-11-12  
**Hugo Version:** 0.152.2 extended  
**Node Version:** 25.1.0
