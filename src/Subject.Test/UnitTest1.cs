using NUnit.Framework;

namespace Subject.Test
{
    public class Tests
    {
        [SetUp]
        public void Setup()
        {
        }

        [Test]
        public void Test1()
        {
            // breakpoint on line 16 to see if debugger stops
            Assert.Pass();
        }
    }
}