{
  "name": "sitecore-jss-app",
  "description": "Application utilizing Sitecore JavaScript Services and Next.js",
  "version": "20.1.0-canary",
  "private": true,
  "config": {
    "appName": "sitecore-jss-app",
    "rootPlaceholders": [
      "jss-main"
    ],
    "sitecoreConfigPath": "/App_Config/Include/zzz",
    "graphQLEndpointPath": "/sitecore/api/graph/edge",
    "language": "en"
  },
  "engines": {
    "node": ">=12",
    "npm": ">=6"
  },
  "author": {
    "name": "Sitecore Corporation",
    "url": "https://jss.sitecore.com"
  },
  "repository": {
    "type": "git",
    "url": "git+https://github.com/sitecore/jss.git"
  },
  "bugs": {
    "url": "https://github.com/sitecore/jss/issues"
  },
  "license": "Apache-2.0",
  "dependencies": {
    "@sitecore-jss/sitecore-jss-nextjs": "ver20",
    "bootstrap": "^4.3.1",
    "express": "^4.18.2",
    "graphql": "~15.8.0",
    "graphql-tag": "^2.11.0",
    "next": "^12.2.4",
    "next-localization": "^0.10.0",
    "nprogress": "~0.2.0",
    "react": "^17.0.2",
    "react-dom": "^17.0.2"
  },
  "devDependencies": {
    "@graphql-codegen/cli": "^1.19.1",
    "@graphql-codegen/plugin-helpers": "^1.18.1",
    "@graphql-codegen/typed-document-node": "^1.18.4",
    "@graphql-codegen/typescript": "^1.21.1",
    "@graphql-codegen/typescript-operations": "^1.17.9",
    "@graphql-codegen/typescript-resolvers": "^1.17.10",
    "@graphql-typed-document-node/core": "^3.1.0",
    "@sitecore-jss/sitecore-jss-cli": "^20.1.0-canary",
    "@sitecore-jss/sitecore-jss-dev-tools": "^20.1.0-canary",
    "@types/node": "^14.6.4",
    "@types/nprogress": "^0.2.0",
    "@types/react": "^17.0.15",
    "@types/react-dom": "^17.0.9",
    "@typescript-eslint/eslint-plugin": "^4.29.1",
    "@typescript-eslint/parser": "^4.29.1",
    "axios": "^0.21.1",
    "chalk": "~2.4.2",
    "chokidar": "~3.1.1",
    "constant-case": "^3.0.4",
    "cross-env": "~6.0.3",
    "eslint": "^7.32.0",
    "eslint-config-next": "^11.0.1",
    "eslint-config-prettier": "^6.15.0",
    "eslint-plugin-prettier": "^3.1.4",
    "eslint-plugin-yaml": "^0.2.0",
    "graphql-let": "^0.16.2",
    "npm-run-all": "~4.1.5",
    "prettier": "^2.1.2",
    "ts-node": "^9.0.0",
    "typescript": "~4.3.5",
    "yaml-loader": "^0.6.0"
  },
  "scripts": {
    "bootstrap": "ts-node --project tsconfig.scripts.json scripts/bootstrap.ts && graphql-let",
    "build": "npm-run-all --serial bootstrap next:build",
    "graphql:update": "ts-node --project tsconfig.scripts.json ./scripts/fetch-graphql-introspection-data.ts",
    "jss": "jss",
    "lint": "eslint ./src/**/*.tsx ./src/**/*.ts ./scripts/**/*.ts",
    "next:build": "next build",
    "next:dev": "cross-env NODE_OPTIONS='--inspect' next dev",
    "next:start": "next start",
    "scaffold": "ts-node --project tsconfig.scripts.json scripts/scaffold-component.ts",
    "start": "npm-run-all --serial bootstrap next:build next:start",
    "start:connected": "npm-run-all --serial bootstrap --parallel next:dev start:watch-components",
    "start:disconnected-proxy": "ts-node --project tsconfig.scripts.json ./scripts/disconnected-mode-proxy.ts",
    "start:production": "npm-run-all --serial bootstrap next:build next:start",
    "start:watch-components": "ts-node --project tsconfig.scripts.json scripts/generate-component-factory.ts --watch"
  }
}
