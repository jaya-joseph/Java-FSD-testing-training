package com.ust1.spring.springcore.reftypes;

public class Student {
	private Scores scores;

	public Scores getScores() {
		return scores;
	}

	public void setScores(Scores scores) {
		this.scores = scores;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Student [scores=" + scores +"]";
	}

}
