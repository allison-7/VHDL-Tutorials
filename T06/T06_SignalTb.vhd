entity T06_SignalTb is
end entity;
    
architecture sim of T06_SignalTb is
    signal MySignal : integer := 0;
begin
    process is
        variable MyVariable : integer := 0;
    begin
        MyVariable := MyVariable + 1;
        MySignal <= MySignal + 1;

        report "MyVariable=" & integer'image(MyVariable);
        report "MySignal=" & integer'image(MySignal);
        wait for 10 ns;
    end process;
end architecture;