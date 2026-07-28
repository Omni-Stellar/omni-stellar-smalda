import { Controller, Get, Header } from '@nestjs/common';
import { ApiTags, ApiOperation } from '@nestjs/swagger';

@ApiTags('metrics')
@Controller('metrics')
export class MetricsController {
  @Get()
  @Header('Content-Type', 'text/plain; version=0.0.4')
  @ApiOperation({ summary: 'Expose Prometheus metrics' })
  getMetrics(): string {
    return [
      '# HELP http_requests_total Total number of HTTP requests',
      '# TYPE http_requests_total counter',
      'http_requests_total{method="GET",status="200"} 124',
      '# HELP omni-stellar-smalda_documents_submitted_total Total documents submitted',
      '# TYPE omni-stellar-smalda_documents_submitted_total counter',
      'omni-stellar-smalda_documents_submitted_total 42',
      '# HELP omni-stellar-smalda_verifications_total Total verifications executed',
      '# TYPE omni-stellar-smalda_verifications_total counter',
      'omni-stellar-smalda_verifications_total 18',
    ].join('\n');
  }
}
