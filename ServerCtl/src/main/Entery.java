package main;

import communicater.Controller;
import gui.Gui;

public class Entery {

	/**
	 * @param args
	 */
	
	public static void main(String[] args) {
		Gui gui = new Gui();
		gui.startGui(args);
		Controller ctlr = new Controller();
	}

}