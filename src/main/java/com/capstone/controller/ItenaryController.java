package com.capstone.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;

@Controller

public class ItenaryController {

	@GetMapping(value = "/darjeeling")

	public String showDarjeelingPage() {

		return "darjeeling";

	}

	@GetMapping(value = "/lepchajagat")

	public String showLepchajagatPage() {

		return "lepchajagat";

	}

	@GetMapping(value = "/kurseong")

	public String showKurseongPage() {

		return "kurseong";

	}

	@GetMapping(value = "/pelling-ravangla")

	public String showPellingRavanglaPage() {

		return "pelling-ravangla";

	}

	@GetMapping(value = "/kalimpong")

	public String showKalimpongPage() {

		return "kalimpong";

	}

	@GetMapping(value = "/lava-lolegaon-rishap")

	public String showLavaLolegaonRishapPage() {

		return "lava-lolegaon-rishap";

	}

	@GetMapping(value = "/north-sikkim")

	public String showNorthSikkimsPage() {

		return "north-sikkim";

	}

	@GetMapping(value = "/doars")

	public String showDoarsPage() {

		return "doars";

	}

	@GetMapping(value = "/gangtok")

	public String showGangtokPage() {

		return "gangtok";

	}

}
