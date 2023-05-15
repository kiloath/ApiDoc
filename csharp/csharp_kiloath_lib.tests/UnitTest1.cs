namespace csharp_kiloath_lib.tests;

[TestClass]
public class UnitTest1
{
    private readonly Class1 _class1;

    public UnitTest1()
    {
        _class1 = new Class1();
    }
    [TestMethod]
    public void TestMethod1()
    {
        // Arrange
        int left = 2;
        int right = 2;
        int expected = 4;
        // Act
        int actual = _class1.add(left,right);
        // Assert
        Assert.AreEqual(expected,actual,"不對唷");
    }
}