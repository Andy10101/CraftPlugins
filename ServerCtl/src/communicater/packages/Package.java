package communicater.packages;

import communicater.Head;

public class Package {
	public byte recurse = 0;
	public int head = Head.INVALID;
	public String scontent;
	public byte[] bcontent;
	public String md5;
}