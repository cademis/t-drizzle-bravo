import { type Config } from "drizzle-kit";

import { env } from "~/env.js";

export default {
  schema: "./src/server/db/schema.ts",
  out: "./drizzle",
  driver: "better-sqlite",
  dbCredentials: {
    url: env.DATABASE_URL,
  },
  tablesFilter: ["t-drizzle-bravo_*"],
} satisfies Config;
