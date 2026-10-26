<div align="center">

<a href="https://ramadigital.id"><img src="https://avatars.githubusercontent.com/u/213913142?v=4" width="110" alt="Rama Aditya"/></a>

# Rama Aditya

**AI builder & trainer · agent infrastructure · open source**

I build open-source tools that let AI coding agents run, remember, and take work from chat.<br/>
I also build attribution systems that connect ad spend to closed deals.

Software for 170+ businesses since 2013 · AI training for 700+ students · Bali, Indonesia

[![Website](https://img.shields.io/badge/ramadigital.id-111?style=for-the-badge&logo=googlechrome&logoColor=4CAF50)](https://ramadigital.id)
[![Email](https://img.shields.io/badge/halo@ramadigital.id-111?style=for-the-badge&logo=gmail&logoColor=EA4335)](mailto:halo@ramadigital.id)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-111?style=for-the-badge&logo=linkedin&logoColor=0A66C2)](https://www.linkedin.com/in/ramaaditya49)
[![WhatsApp](https://img.shields.io/badge/WhatsApp-111?style=for-the-badge&logo=whatsapp&logoColor=25D366)](https://api.whatsapp.com/send?phone=6285803327994&text=Hi%20Rama%2C%20I%20found%20you%20on%20GitHub.)

[![titen-memory](https://img.shields.io/npm/dm/titen-memory?style=flat-square&label=titen-memory&color=4CAF50&labelColor=111&logo=npm&logoColor=CB3837)](https://www.npmjs.com/package/titen-memory)
[![caraka](https://img.shields.io/npm/dm/caraka?style=flat-square&label=caraka&color=4CAF50&labelColor=111&logo=npm&logoColor=CB3837)](https://www.npmjs.com/package/caraka)
[![compactio](https://img.shields.io/npm/dm/compactio?style=flat-square&label=compactio&color=4CAF50&labelColor=111&logo=npm&logoColor=CB3837)](https://www.npmjs.com/package/compactio)
[![cloudflare-bulk-delete](https://img.shields.io/npm/dm/cloudflare-bulk-delete?style=flat-square&label=cloudflare-bulk-delete&color=4CAF50&labelColor=111&logo=npm&logoColor=CB3837)](https://www.npmjs.com/package/cloudflare-bulk-delete)
[![@growthcircle/cadis](https://img.shields.io/npm/dm/@growthcircle/cadis?style=flat-square&label=cadis&color=4CAF50&labelColor=111&logo=npm&logoColor=CB3837)](https://www.npmjs.com/package/@growthcircle/cadis)

</div>

---

## The agent stack

Four local-first pieces. Use one, or put them together.

<table>
<tr>
<td width="50%" valign="top">

<a href="https://github.com/Growth-Circle/cadis"><img src="https://cadis.digital/hud.webp" alt="CADIS desktop HUD with 14 agents around a central orb"/></a>

### [C.A.D.I.S.](https://github.com/Growth-Circle/cadis) ![stars](https://img.shields.io/github/stars/Growth-Circle/cadis?style=flat-square&label=%E2%98%85&color=4CAF50&labelColor=111)

**Run** — a multi-agent runtime in Rust. Desktop HUD, policy-gated tools, voice in and out, and coding agents that each work in their own git worktree.

`Rust` `Tauri` `React` — [cadis.digital](https://cadis.digital)

</td>
<td width="50%" valign="top">

<a href="https://github.com/RamaAditya49/titen"><img src="https://raw.githubusercontent.com/RamaAditya49/titen/main/docs/assets/readme/titen-hero.svg" alt="Titen: self-hosted agent memory with no API key and no LLM"/></a>

### [Titen](https://github.com/RamaAditya49/titen) ![stars](https://img.shields.io/github/stars/RamaAditya49/titen?style=flat-square&label=%E2%98%85&color=4CAF50&labelColor=111)

**Remember** — agent memory with no API key, no LLM, and no embedding provider. Serves MCP over SQLite, or Cloudflare Workers + D1 for a team. Each memory keeps its source, its readers, and the evidence against it.

```
npx titen-memory mcp
```

`TypeScript` `Bun` `SQLite` `MCP` — [titen.dev](https://titen.dev)

</td>
</tr>
<tr>
<td width="50%" valign="top">

<a href="https://github.com/CarakaDev/caraka"><img src="https://raw.githubusercontent.com/CarakaDev/caraka/main/assets/banner.svg" alt="Caraka: send the task, Caraka runs it"/></a>

### [Caraka](https://github.com/CarakaDev/caraka) ![stars](https://img.shields.io/github/stars/CarakaDev/caraka?style=flat-square&label=%E2%98%85&color=4CAF50&labelColor=111)

**Reach** — send a task from Telegram, Discord, or WhatsApp to the coding agent on your machine. Caraka adds only what chat needs: identity, sessions, approvals, and audit.

```
npx caraka init
```

`ACP` `Node 22` — [caraka.dev](https://caraka.dev)

</td>
<td width="50%" valign="top">

<a href="https://github.com/RamaAditya49/compactio"><img src="https://raw.githubusercontent.com/RamaAditya49/compactio/main/assets/hero.svg" alt="compactio: System 1 for your coding agent"/></a>

### [compactio](https://github.com/RamaAditya49/compactio) ![stars](https://img.shields.io/github/stars/RamaAditya49/compactio?style=flat-square&label=%E2%98%85&color=4CAF50&labelColor=111)

**Save** — a System 1 for your coding agent. A fast decision model cuts test logs, build logs, and search results before the expensive model reads them. One real test log: 20,501 → 747 characters.

```
claude plugin marketplace add RamaAditya49/compactio
```

`TypeScript` `Claude Code plugin` · zero dependencies

</td>
</tr>
</table>

## Tools

<table>
<tr>
<td width="50%" valign="top">

<a href="https://github.com/RamaAditya49/cadiswave"><img src="https://raw.githubusercontent.com/RamaAditya49/cadiswave/main/docs/images/device-en.png" alt="CadisWave device page with gain dial, input meter, and headphone level"/></a>

### [CadisWave](https://github.com/RamaAditya49/cadiswave) ![stars](https://img.shields.io/github/stars/RamaAditya49/cadiswave?style=flat-square&label=%E2%98%85&color=4CAF50&labelColor=111)

Elgato Wave XLR software for Linux. Mic gain, mute, phantom power, headphones, and a PipeWire mixer. Continues [OpenWave](https://github.com/rikkichy/openwave).

`Rust` `GTK4` `libadwaita` `PipeWire`

</td>
<td width="50%" valign="top">

<a href="https://github.com/RamaAditya49/peta-pixel-nusantara"><img src="https://raw.githubusercontent.com/RamaAditya49/peta-pixel-nusantara/main/assets/preview.png" alt="Pixel map of Indonesia"/></a>

### [peta-pixel-nusantara](https://github.com/RamaAditya49/peta-pixel-nusantara) ![stars](https://img.shields.io/github/stars/RamaAditya49/peta-pixel-nusantara?style=flat-square&label=%E2%98%85&color=4CAF50&labelColor=111)

An 8-bit pixel map of Indonesia: 38 provinces and 514 regencies and cities on a zoomable canvas grid. Open data, no build step.

`Canvas` `TopoJSON` `geoBoundaries`

</td>
</tr>
<tr>
<td width="50%" valign="top">

### [cloudflare-bulk-delete](https://github.com/RamaAditya49/cloudflare-bulk-delete) ![stars](https://img.shields.io/github/stars/RamaAditya49/cloudflare-bulk-delete?style=flat-square&label=%E2%98%85&color=4CAF50&labelColor=111)

Fixes the Cloudflare error *"Your project has too many deployments to be deleted"*. Deletes old Pages and Workers deployments and keeps production.

```
npx cloudflare-bulk-delete interactive
```

</td>
<td width="50%" valign="top">

### [kill-node-process](https://marketplace.visualstudio.com/items?itemName=RamaDigital.kill-node-process)

A VS Code extension. Find and stop Node.js processes from the status bar on Windows, Linux, and macOS.

</td>
</tr>
</table>

**Agent skills** — [rama-marketing](https://github.com/RamaAditya49/rama-marketing) *(Meta, Google, TikTok, and LinkedIn Ads)* · [rama-copywriting](https://github.com/RamaAditya49/rama-copywriting) · [rama-cs](https://github.com/RamaAditya49/rama-cs) *(customer service)* · [seng-jelas](https://github.com/RamaAditya49/seng-jelas) *(finds the patterns that make text read as AI slop)* · [tutur](https://github.com/RamaAditya49/tutur) and [bahasa-jelas-terkendali](https://github.com/RamaAditya49/bahasa-jelas-terkendali) *(natural Indonesian for LLMs)*

**MCP servers and plugins** — [coret-agent-kit](https://github.com/Rama-Digital/coret-agent-kit) · [biver-mcp](https://github.com/biver-colony/biver-mcp) · [grupy-mcp](https://github.com/ai-builders-id/grupy-mcp) · [konektor-plugin](https://github.com/Growth-Circle/konektor-plugin) · [gc-provider](https://github.com/Growth-Circle/gc-provider) · [openclaw-auth-wiper](https://github.com/Growth-Circle/openclaw-auth-wiper) · [utus](https://github.com/ai-builders-id/utus) · [ai-agentic](https://github.com/RamaAditya49/ai-agentic)

**Volara SDKs** — one omnichannel chat API: [TypeScript](https://github.com/volara-asia/volara-js) · [Python](https://github.com/volara-asia/volara-python) · [PHP](https://github.com/volara-asia/volara-php) · [Ruby](https://github.com/volara-asia/volara-ruby) · [Go](https://github.com/volara-asia/volara-go) · [WordPress](https://github.com/volara-asia/volara-wordpress) · [n8n](https://github.com/volara-asia/volara-n8n) · [MCP](https://github.com/volara-asia/volara-mcp) · [widget](https://github.com/volara-asia/volara-widget)

**Prompt collections** — [prd-prompt-collection](https://github.com/ai-builders-id/prd-prompt-collection) · [mdown-collection](https://github.com/ai-builders-id/mdown-collection)

**Forks I maintain** — [growcli](https://github.com/Growth-Circle/growcli) *(OpenAI Codex CLI)* · [grow-team](https://github.com/Growth-Circle/grow-team) *(Zulip)* · [take-my-computer](https://github.com/RamaAditya49/take-my-computer) *(computer use on Linux over MCP)*

---

## Products

<details>
<summary><b>10 live products</b>, mostly for Indonesian businesses</summary>

<br/>

| | Status | |
|---|:---:|---|
| [**Konektor**](https://konektor.id) | Live | Attribution from ad click to landing page to WhatsApp to closed deal, sent back to Google Ads and Meta Ads. |
| [**Coret**](https://coret.id) | Live | Mind maps and visual thinking with a public API: maps, nodes, sketches, and share links. |
| [**Biver**](https://biver.id) | Live | AI landing-page builder for small businesses. No code. |
| [**Volara**](https://volara.id) | Live | Omnichannel chat API with SDKs in six languages. *Co-built.* |
| [**Termilo**](https://termilo.com) | Live | Booking for service businesses, agencies, and SaaS teams. |
| [**Nayaka**](https://nayaka.studio) | Live | One brief in, a finished ad video out: script, Indonesian voice, SFX, music, captions, four ratios. Runs on your machine. |
| [**Nucifra**](https://nucifra.com) | Live | Gives a file your agent made a temporary public URL with the correct Content-Type. Video up to 4 GB. |
| [**Hermes Trading**](https://hermestrading.id) | Live | AI trading agent on Tokocrypto. Every decision and trade has a public proof hash. |
| [**sanji.space**](https://sanji.space) | Early access | Work chat for teams and AI agents in one room. |
| [**ongkir.online**](https://ongkir.online) | Live | Indonesian shipping-rate lookup. |

</details>

## Client work

<details>
<summary><b>5 public clients, 10 under NDA, 2 internal platforms</b></summary>

<br/>

**Public**

- [Waffles](https://waffles.id) — AI conversion assistant for websites. Astro edge worker, private Hono API over service bindings, Drizzle on several D1 databases, RAG ingestion, Durable Object quotas.
- Provaliant — campaign workspace for agencies: campaign board, staged workflow, AI video pipeline.
- [KotakFoto.id](https://kotakfoto.id) — storefront and organic social auto-poster.
- [Birojodoh Rumaysho](https://birojodoh.rumaysho.com) — ta'aruf (marriage introduction) platform, maintained since 2025.
- [AI Club Indonesia](https://aiclub.id) — community platform, Telegram ops bot, and automated video generator.

**Under NDA** (no names, only the shape of the work)

- Growth OS for a Hajj and Umrah travel operator: package catalog, leads routed to the nearest branch, and landing pages per region. Bun, Astro, Hono, Drizzle, Postgres.
- Settlement reconciliation for a multi-outlet F&B group: matches incoming payments against ShopeeFood, GoFood, GoPay, and GrabFood settlements from email.
- Delivery operations platform for a software agency: every paid engagement from blueprint to QA acceptance, with a production dashboard.
- Multi-tenant online course platform with payment callbacks and a service-token link to the platform above.
- Licensing and telemetry server for a desktop product.
- ERP for a manufacturing group.
- Attribution and lead-source tracking for a permit and licensing consultancy.
- Operations ERP for a health-supplement brand: inventory, stock aging, and orders from the TikTok Shop, Shopee, and Lazada APIs.
- Agentic CRM for an industrial bearings distributor: answers customers on WhatsApp and Telegram, reads stock from the accounting system, and drafts sales orders.
- Clinic marketplace and professional LMS for an optometry network.

**Internal platforms**

- Growth Circle: Meta Ads manager, webinar system, WhatsApp gateway, mail system, LiteLLM gateway, shared agent memory on Workers + D1 + Vectorize, and managed agent hosting.
- Rama Digital: ads reporting, SEO research gateway, ERP automation, and two video engines. `motion-engine` turns a design into an MP4 with voice, SFX, and music. `stick-animations` draws stick-figure films as pure SVG, with no video model.

</details>

## Results

I sell attribution, so I measure my own site the same way. **9 of 15 service pages on ramadigital.id rank on Google page 1.** The search `jasa install openclaw` ranks at position 1.1 with a 39% CTR.

<details>
<summary><b>9 service pages on page 1</b> (Google Search Console, 23 Jun – 22 Sep 2026)</summary>

<br/>

| Service page (Indonesian) | Avg. position |
|---|:---:|
| [AI SEO and GEO training](https://ramadigital.id/services/pelatihan-ai-seo-geo) | **3.7** |
| [Hermes Agent install](https://ramadigital.id/services/jasa-install-hermes-agent) | **5.1** |
| [Agentic AI training for schools and universities](https://ramadigital.id/services/pelatihan-ai-agentic) | **6.0** |
| [AI training for company teams](https://ramadigital.id/services/pelatihan-ai-perusahaan) | **6.7** |
| [OpenClaw install](https://ramadigital.id/services/jasa-install-openclaw) | **6.8** |
| [Local AI server for companies](https://ramadigital.id/services/local-ai-server-perusahaan) | **6.9** |
| [Web application development](https://ramadigital.id/services/web-application-development) | **7.5** |
| [Meta Ads system with AI](https://ramadigital.id/services/openclaw-meta-ads-operating-system) | **8.1** |
| [QwenPaw install](https://ramadigital.id/services/jasa-install-qwenpaw) | **8.4** |

After the home page, the most organic traffic comes from the agent install guides for [Windows](https://ramadigital.id/blog/cara-install-hermes-agent-di-windows), [Linux](https://ramadigital.id/blog/cara-install-hermes-agent-di-linux), and [macOS](https://ramadigital.id/blog/cara-install-hermes-agent-di-macos).

</details>

## Stack

<div align="center">
  <img src="https://skillicons.dev/icons?i=rust,go,ts,js,py,php,vue,nuxtjs,react,nextjs,astro,svelte,tailwind&theme=dark" alt="Languages and frameworks: Rust, Go, TypeScript, JavaScript, Python, PHP, Vue, Nuxt, React, Next.js, Astro, Svelte, Tailwind"/><br/>
  <img src="https://skillicons.dev/icons?i=nodejs,nestjs,bun,laravel,postgres,mongodb,redis,docker,cloudflare,tauri,linux,git&theme=dark" alt="Runtime and infrastructure: Node.js, NestJS, Bun, Laravel, Postgres, MongoDB, Redis, Docker, Cloudflare, Tauri, Linux, Git"/>
</div>
