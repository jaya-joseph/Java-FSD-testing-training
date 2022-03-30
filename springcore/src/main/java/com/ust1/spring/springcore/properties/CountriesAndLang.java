package com.ust1.spring.springcore.properties;

import java.util.Properties;

public class CountriesAndLang {
	private Properties countryAndLangs;

	public Properties getCountryAndLangs() {
		return countryAndLangs;
	}

	public void setCountryAndLangs(Properties countryAndLangs) {
		this.countryAndLangs = countryAndLangs;
	}

	@Override
	public String toString() {
		return "CountriesAndLang [countryAndLang=" + countryAndLangs + "]";
	}
}
