namespace simple.migrations
{
    public interface CommandRegistry
    {
        ParameterizedCommand<string[]> command_for(string[] arguments);
    }
}