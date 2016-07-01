
@IsTest
private class GameFightObjControllerTest {
    /*
     * test fight method
     */
    static testMethod void testBehavior() {
        GameFightObjController controller = new GameFightObjController();
        controller.fight();
        System.assertNotEquals(null, controller.getUnit1(), 'unit1 is null');
        System.assertNotEquals(null, controller.getUnit2(), 'unit2 is null');
        System.assertNotEquals(null, controller.winner, 'winner is null');
        System.assertNotEquals(null, controller.game, 'game is null');
        System.assertEquals(true, controller.isShowResult, 'isShowResult is not true');
    }
}