CREATE TABLE `cities` (
	`id` integer PRIMARY KEY NOT NULL,
	`name` text,
	`country_id` integer,
	FOREIGN KEY (`country_id`) REFERENCES `countries`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `countries` (
	`id` integer PRIMARY KEY NOT NULL,
	`name` text
);
--> statement-breakpoint
CREATE TABLE `t-drizzle-bravo_post` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`name` text(256),
	`created_at` integer DEFAULT CURRENT_TIMESTAMP NOT NULL,
	`updatedAt` integer
);
--> statement-breakpoint
CREATE TABLE `users` (
	`id` integer PRIMARY KEY NOT NULL,
	`full_name` text,
	`phone` text
);
--> statement-breakpoint
CREATE UNIQUE INDEX `nameIdx` ON `countries` (`name`);--> statement-breakpoint
CREATE INDEX `name_idx` ON `t-drizzle-bravo_post` (`name`);