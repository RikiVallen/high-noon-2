function __InputConfigVerbs()
{
    enum INPUT_VERB
    {
        UP,
        DOWN,
        LEFT,
        RIGHT,
		AIM_UP,
		AIM_DOWN,
		AIM_RIGHT,
		AIM_LEFT,
		RIGHT_TRIGGER,
		LEFT_TRIGGER
    }
    
    enum INPUT_CLUSTER
    {
        //Add your own clusters here!
        //Clusters are used for two-dimensional checkers (InputDirection() etc.)
        NAVIGATION,
		AIMING
    }
    
    InputDefineVerb(INPUT_VERB.UP,              "up",             [vk_up,    "W"],    [-gp_axislv, gp_padu]);
    InputDefineVerb(INPUT_VERB.DOWN,            "down",           [vk_down,  "S"],    [ gp_axislv, gp_padd]);
    InputDefineVerb(INPUT_VERB.LEFT,            "left",           [vk_left,  "A"],    [-gp_axislh, gp_padl]);
    InputDefineVerb(INPUT_VERB.RIGHT,           "right",          [vk_right, "D"],    [ gp_axislh, gp_padr]);
	InputDefineVerb(INPUT_VERB.AIM_UP,          "aim_up",          m_axisx,           [ gp_axisrv]);
    InputDefineVerb(INPUT_VERB.AIM_DOWN,        "aim_down",        m_axisy,           [-gp_axisrv]);
    InputDefineVerb(INPUT_VERB.AIM_LEFT,        "aim_left",        m_axisx,           [-gp_axisrh]);
    InputDefineVerb(INPUT_VERB.AIM_RIGHT,       "aim_right",       m_axisy,           [ gp_axisrh]);
	InputDefineVerb(INPUT_VERB.RIGHT_TRIGGER,   "right_trigger",   vk_space,          [ gp_shoulderrb]);
	InputDefineVerb(INPUT_VERB.LEFT_TRIGGER,    "left_trigger",   vk_shift,          [ gp_shoulderlb]);
    
    
    //Define a cluster of verbs for moving around
    InputDefineCluster(INPUT_CLUSTER.NAVIGATION, INPUT_VERB.UP, INPUT_VERB.RIGHT, INPUT_VERB.DOWN, INPUT_VERB.LEFT);
	InputDefineCluster(INPUT_CLUSTER.AIMING, INPUT_VERB.AIM_UP, INPUT_VERB.AIM_RIGHT, INPUT_VERB.AIM_DOWN, INPUT_VERB.AIM_LEFT);
}
