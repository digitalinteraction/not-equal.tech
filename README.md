# Nuxt 3 Minimal Starter

Look at the [Nuxt 3 documentation](https://nuxt.com/docs/getting-started/introduction) to learn more.

## Setup

Make sure to install the dependencies:

```bash
# yarn
yarn install

# npm
npm install

# pnpm
pnpm install
```

## Development Server

Start the development server on http://localhost:3000

```bash
npm run dev
```

## Production

Build the application for production:

```bash
npm run build
```

Locally preview production build:

```bash
npm run preview
```

Check out the [deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.

## Vercel
This project is hosted on Vercel and uses Edge Config Store.


## Not-Equal-Github-Oauth-Provider


Environment vars:

| Var                 | Value                                                                   | Description                                         |
|---------------------|-------------------------------------------------------------------------|-----------------------------------------------------|
| ORIGIN              | https://not-equal-think-active-labs.vercel.app                          | Origin of the oauth request                         |
| REDIRECT_URL        | https://not-equal-netlify-cms-github-oauth-provider.vercel.app/callback | Redirect URL for Github to redirect auth'd users to |
| OAUTH_CLIENT_SECRET | ***                                                                     | Github Oauth client secret                          |
| OAUTH_CLIENT_ID     | ***                                                                     | Github OAuth client ID                              |
| NODE_ENV            | production                                                              | dev/production value                                |
| PORT                | 3000                                                                    | Port of running application                         |

### OAuth credentials
To generate OAuth credentials click on your profile / org profile (top right) > Settings > Developer Settings > OAuth Apps > New OAuth App.

Use the following settings:
| Field                      | Value                                                                   |
|----------------------------|-------------------------------------------------------------------------|
| Application Name           | Not-Equal Authentication Gateway                                        |
| Homepage URL               | https://not-equal-netlify-cms-github-oauth-provider.vercel.app          |
| Authorization callback URL | https://not-equal-netlify-cms-github-oauth-provider.vercel.app/callback |

The resulting Client ID and Client Secret should be set as environment variables in the Vercel deployment of the Not-Equal-Github-Oauth-Provider project.

## Open Lab deployment

The app is built as a docker container and deployed through [Open Lab Hub](https://hub.openlab.dev/apps/containers/12)
with a [Switchboard domain](https://hub.openlab.dev/switchboard/domains/20) as the reverse proxy.

> **2025-03-27 NOTE:** I couldn't get it building in a container, run the build with `pnpm generate` first,
> You need pnpm@8 to use the existing lock file
>
> I also had to take out the search functionality to get it installing properly