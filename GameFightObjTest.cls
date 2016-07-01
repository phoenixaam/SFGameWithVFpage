/*
 * test the battle in object mode (without DB)
 */
@IsTest
private class GameFightObjTest {
    static testMethod void testBehavior() {
        GameFightObjUnit unit1 = new GameFightObjUnit('unit1', 1000, 20, 50);
        GameFightObjUnit unit2 = new GameFightObjUnit();
        unit2.setName('unit2');
        unit2.setHealthPoint(1000);
        unit2.setDamageMin(20);
        unit2.setDamageMax(50);
        GameFightObj game = new GameFightObj();
        // test the first random game outcome
        GameFightObjUnit winner = game.fight(unit1, unit2);
        System.assertNotEquals(null, winner, 'return null!');
        System.assertEquals(true, winner == unit1 || winner == unit2, 'wrong return unit!');

        // test other random game outcome (while it isn't happened)
        if (winner == unit1) {
            while (winner != unit1) {
                winner = game.fight(unit1, unit2);
            }
            System.assertNotEquals(null, winner, 'return null!');
            System.assertEquals(true, game.getGameLog().size() > 0);
        } else {
            while (winner != unit2) {
                winner = game.fight(unit1, unit2);
            }
            System.assertNotEquals(null, winner, 'return null!');
            System.assertEquals(true, game.getGameLog().size() > 0);
        }
    }
}