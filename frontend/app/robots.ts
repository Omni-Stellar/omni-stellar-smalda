import { MetadataRoute } from 'next';

export default function robots(): MetadataRoute.Robots {
  return {
    rules: [
      {
        userAgent: '*',
        allow: '/',
        disallow: ['/verify/', '/dashboard/', '/api/'],
      },
    ],
    sitemap: 'https://omni-stellar-smalda.org/sitemap.xml',
  };
}
