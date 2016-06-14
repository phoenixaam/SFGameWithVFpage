/**
 * The battle between two units.
 * We simulate random battles and define the winner unit.
 */
public class GameFight {
    public List<String> gameLog;
    
    public List<String> getGameLog(){
        return gameLog;
    }
    
    public GameFight(){
        gameLog = new List<String>();
    }
	
	/**
     * Defines which unit will win in the battle.
     * @param unit1
     * @param unit2
     * @return winner unit
     */
    public GameFightUnit fight(GameFightUnit unit1, GameFightUnit unit2) {

        while (unit1.getHealthPoint() > 0 && unit2.getHealthPoint() > 0) {
            if (Math.random() > 0.5) {    // randomizing players turn
                round(unit1, unit2);
            } else {
                round(unit2, unit1);
            }
        }
        if (unit1.getHealthPoint() > 0) {
            return unit1;
        } else {
            return unit2;
        }

    }

    private void round(GameFightUnit unit1, GameFightUnit unit2) {
        Integer leftHp = unit1.getHealthPoint() - randomKick(unit2);
        if (leftHp > 0) {
            gameLog.add(unit1.getName() + ' left ' + leftHp + ' health points.');
            unit1.setHealthPoint(leftHp);
        } else {
            gameLog.add(unit1.getName() + ' is dead.');
            unit1.setHealthPoint(0);
        }
    }

    private Integer randomKick(GameFightUnit unit) {
        Double damageDouble = (Math.floor(Math.random() * (unit.getDamageMax() - unit.getDamageMin() + 1) + unit.getDamageMin()));
        Integer damage = damageDouble.intValue();
        gameLog.add(unit.getName() + ' kicks with ' + damage + ' damages.');
        return damage;
    }
}