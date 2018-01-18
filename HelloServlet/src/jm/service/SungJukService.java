package jm.service;

import model.SungJukV0;

public class SungJukService {
	public int getTotal(SungJukV0 sj) 
	{
		int tot = sj.getKor() + sj.getEng() + sj.getMat();
		sj.setTot(tot);
		return tot;
	}
	
	public double getAverage(SungJukV0 sj) 
	{
		double avg = (double)sj.getTot() / 3;
		sj.setAvg(avg);
		return avg;
	}
	public String getGrade(SungJukV0 sj) 
	{
		String grd = "F";
		return grd;
		
	}

}
