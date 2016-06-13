public class GameFightController{
    public GameFight game { get; set; }
    public GameFightUnit unit1 { get; set; }
    public GameFightUnit unit2 { get; set; }
    public GameFightUnit winner { get; set; }
    public Boolean isShowResult { get; set; }
    
    public GameFightController(){
        unit1 = new GameFightUnit();
        unit2 = new GameFightUnit();
        winner = new GameFightUnit();
        isShowResult = false;
    }
    
    public GameFightUnit getUnit1 () {
        return unit1;
    }
    public GameFightUnit getUnit2 () {
        return unit2;
    }
    
        public void setUnit1(GameFightUnit unit){
        unit1 = unit;
    }
    public void setUnit2(GameFightUnit unit){
        unit2 = unit;
    }
    
    public PageReference fight() {
        game = new GameFight();
        winner = game.fight(unit1, unit2);
        isShowResult = true;
        return null;
    }
}