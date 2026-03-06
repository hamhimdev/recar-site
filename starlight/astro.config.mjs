// @ts-check
import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";
import tailwindcss from "@tailwindcss/vite";

// https://astro.build/config
export default defineConfig({
	outDir: "../docs",
	site: "https://recar.loxodrome.app",
	base: "/docs/",
	integrations: [
		starlight({
			title: "Recar Docs",
			logo: {
				src: "./src/assets/recar.svg",
				replacesTitle: true,
			},
			social: [
				{
					icon: "discord",
					label: "Discord",
					href: "https://recar.loxodrome.app/discord",
				},
				{
					icon: "codeberg",
					label: "Codeberg",
					href: "https://codeberg.org/hamhim/recar",
				},
			],
			editLink: {
				baseUrl: "https://github.com/hamhimdev/recar-site/edit/main/docs/",
			},
			sidebar: [
				{ label: "Introduction", autogenerate: { directory: "introduction" } },
				{ label: "Guides", autogenerate: { directory: "guides" } },
				{ label: "Reference", autogenerate: { directory: "reference" } },
			],
			customCss: ["./src/styles/global.css"],
		}),
	],
	vite: {
		plugins: [tailwindcss()],
	},
});
