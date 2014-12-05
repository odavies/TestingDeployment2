public with sharing class CaseSelector {

	private String caseName;
	private Case theCase;

	public CaseSelector(String caseName) {
		this.caseName = caseName;
	}

	public void loadCase(Id caseId) {
		this.theCase = [SELECT Id FROM Case WHERE Id = :caseId][0];
	}
	
	public void setCaseName(String caseName) {
		this.caseName = caseName;
	}
	
	public void setCase(Case newCase) {
		this.theCase = newCase;
	}
}
