# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

PCMAC B2B Website - A minimalist, Apple-aligned digital presence for PcMac S.A., Colombia's leading Apple Business Partner with 26+ years of experience. The website serves as a strategic digital asset to capture enterprise clients and manage relationships through an integrated RCM (Relationship & Client Management) system.

**Strategic Position:** Fast, specialized, Apple-certified. Not warmer than competitors — quicker. Not friendlier — more capable.

## Architecture

The website follows a **three-arm architecture**:

1. **ARM 1: Marketplace (MVP Priority)** - Front-end product display with no prices shown. All interactions lead to quotation requests. Products displayed with Apple CDN imagery.

2. **ARM 2: RCM System (Client Catalog)** - Backend system to capture leads from quotation forms, sync with HubSpot CRM, track client interactions, segment by role (IT Manager, CFO, Procurement, HR), and store company profiles.

3. **ARM 3: Content Hub** - Positions PCMAC as thought leader through success stories (SENA, Truora cases), industry-specific guides, Apple ecosystem education, and MDM/Security tutorials.

## Brand Voice Compliance (CRITICAL)

### BANNED PHRASES (Not Apple-compliant):
- "Tu Experto Apple de Confianza"
- "Guardián Experto" / "El Guardián"
- "#DeServicioDeAppleConAmor"
- "Aliados que dan la cara"
- "Cero Fricción" (internal only, never customer-facing)
- "Te acompañamos" / "Tu socio" / "Tu partner"
- Any phrase implying Apple endorsement of PCMAC's expertise

### APPROVED LANGUAGE (Apple-aligned):
- "Apple Business Partner" (official designation)
- "Authorized Service Provider" (official designation)
- "26 years deploying Apple in Colombia"
- "Enterprise deployment. Certified service."
- "Mac for business. iPad for education. Managed by experts."
- Let certifications speak — don't overclaim

### Apple Voice Characteristics:
- Confident, not boastful
- Factual, not emotional
- Product-focused, not relationship-focused
- Quiet authority — they don't ask for trust, they assume it
- Short sentences. Clear benefits. No fluff.

## Design Philosophy

### Visual Design Principles:
- **White Space:** Generous margins, product breathing room
- **Clean Typography:** SF Pro Display or system fonts
- **Restrained Color:** Mostly white/black, color only for CTAs
- **Product Hero:** Apple imagery speaks — minimize text overlay
- **No Decoration:** No gradients, no patterns, no visual noise
- **Quiet Confidence:** Design that doesn't try too hard

### Color System (CSS):
```css
--primary: #0071E3;          /* Apple's link blue */
--primary-dark: #0058B0;
--primary-light: #42A5F5;
--gray-800: #1D1D1F;         /* Apple's text black */
--gray-500: #6E6E73;         /* Apple's gray */
--white: #FFFFFF;            /* Clean white */
```

### Typography:
```css
font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'SF Pro Display', sans-serif;
```

## Key Business Rules

### Quotation Flow:
1. User clicks "Cotizar" on any product/service
2. Modal captures: Name, Email, Phone, Company, Role, Company Size, Needs
3. Lead sent to HubSpot with source tracking
4. Auto-response email with calendar link
5. Sales team follow-up within 24h

### Product Display Rules:
- **Never show prices** (B2B model requires consultation)
- All products link to "Cotizar" CTA
- Use real Apple CDN images only
- Highlight enterprise-relevant specs (security, management, deployment)

### Content Guidelines:
- Tone: Professional, confident, factual (Apple voice)
- Avoid: Emotional language, relationship promises, invented positioning
- Emphasize: Certifications, capabilities, track record (numbers)
- Always include: Official Apple partner badges, real metrics
- Never: Claim expertise Apple hasn't endorsed, use "tu/your" excessively

## Company Information

- **Company:** PcMac S.A.
- **Website:** https://pcmac.co
- **Experience:** 26+ years
- **Certifications:** Apple Business Partner, Apple Authorized Service Provider (AASP)
- **Target Market:** B2B — Enterprises, SMBs, Educational Institutions
- **WhatsApp:** +57 315 782 8266
- **HubSpot Meetings:** https://meetings.hubspot.com/pcmac

### Service Pillars:
1. **Apple en la Empresa** — Enterprise Apple deployments
2. **Servicio Técnico Apple** — Authorized repairs and support
3. **Soluciones Educativas (Edúca)** — Education sector solutions
4. **Soluciones MDM** — Mosyle & Jamf device management
5. **Logística y Almacenamiento** — Device logistics and storage

### Notable Clients:
- **SENA** — 152,000+ licenses, 2,000 monthly tickets
- **Truora** — 112 machines, 130 licenses
- Jardín Campestre, Volvo, Banco Inter, Aviatur

## HTML Prototype Status

**Current file:** `frontend_pcmac.html` (and `frontend_pcmac.txt`)

### What works:
- Clean layout structure
- Apple CDN images (correct source)
- Real company data (clients, metrics)
- HubSpot integration links
- Mobile-responsive grid

### What needs correction:
- ❌ Headline "Tu Experto Apple de Confianza" — not Apple-compliant
- ❌ Role selector (IT/CFO/Procurement) — too segmented, not Apple style
- ❌ Gradient text effects — Apple doesn't use these
- ❌ Orange accent color (#F97316) — not in Apple palette
- ❌ "Cotizar" emotional framing — should be neutral "Solicitar información"
- ❌ Trust indicators phrasing — overclaims expertise
- ❌ Some microcopy is too warm/familiar

### Apple Product Images (CDN Sources) ✓
Keep using official Apple CDN:
- MacBook Pro M4: https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp-14-m4-pro-spacegray-select-202411
- iPhone 16 Pro: https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-16-pro-model-unselect-gallery-2-202409
- iPad Pro M4: https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-13-digitalmat-space-black-1-202405

## Development Roadmap

### Phase 1: MVP Front-End (Current)
- HTML/CSS prototype
- Apple-aligned visual design
- Core sections (Hero, Solutions, Products, Social Proof)
- Quotation modal
- Mobile optimization refinements
- Form backend integration

### Phase 2: RCM Integration
- HubSpot API connection
- Lead capture to CRM
- Client profile database
- Role-based segmentation
- Interaction tracking

### Phase 3: Full Build
- Convert to Next.js 14
- Tailwind CSS implementation
- Prisma database layer
- Admin dashboard
- Analytics integration

### Phase 4: Content Hub
- Blog CMS
- Case study templates
- Resource library
- Newsletter integration

## Technical Constraints

1. **Apple Voice Alignment:** Every word must pass "Would Apple write this?" test. If not, rewrite.
2. **No Invented Positioning:** Do not use "Guardián Experto", "Cero Fricción", or any phrase not in Apple's partner guidelines.
3. **Credentials Over Claims:** Say "Apple Authorized Service Provider" — don't say "experts you can trust."
4. **Visual Restraint:** When in doubt, remove. Apple's sites have more white space than content.
5. **Spanish Formality:** Use "usted" tone in copy, not "tú" — matches Apple's professional distance in LATAM.
6. **B2B Model:** No shopping carts, no prices, no impulse buying. Every interaction leads to consultation.
7. **Mobile-First:** Colombia has high mobile usage. Flawless phone experience is mandatory.
8. **HubSpot Integration:** Existing CRM must be preserved. All leads flow to HubSpot.
9. **Performance:** Target <2s load time. Apple's sites are fast — ours must be too.

## Critical Files

- `frontend_pcmac.html` - Current working prototype (REQUIRES REVISION)
- `frontend_pcmac.txt` - Duplicate of HTML file
- `README.pdf` - Complete project context document (13 pages)

## Success Metrics

- Quote requests/month: 50+
- Form completion rate: >60%
- Mobile bounce rate: <40%
- Page load time: <2s
- Time to first quote: <3 days

## Competitive Landscape

- **MAAKAL:** Boutique consultant, clean Apple-aligned UX, Jamf/Microsoft integration. Weakness: Limited e-commerce, manual sales dependency.
- **LINALCA:** Multi-brand logistics hub, ISO certs, robust marketplace, circular economy. Weakness: Generalist — Apple is commodity among Dell/Lenovo.
- **MAC POWER:** Regional integrator, infrastructure authority, $100B scale, cybersecurity stack, 5 countries. Weakness: Bureaucratic, impersonal, Apple is 1 of 30 brands.

**PCMAC opportunity:** Be the fast, specialized, Apple-certified option. Not warmer — quicker. Not friendlier — more capable.

## Notes for Claude Code

When developing this project:

1. **Start with the HTML prototype** (`frontend_pcmac.html`) as the visual reference
2. **Maintain Apple aesthetics** — when in doubt, choose the more minimal option
3. **Prioritize the quotation flow** — this is the core conversion mechanism
4. **Use semantic HTML** for SEO and accessibility
5. **Implement progressive enhancement** — basic functionality without JavaScript
6. **Test on Colombian mobile networks** — optimize for slower connections

Let the credentials speak. Don't invent emotional positioning.
