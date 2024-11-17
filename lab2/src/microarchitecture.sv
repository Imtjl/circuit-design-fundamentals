module safe_descending_stack(
    input  logic        clk,        // Сигнал тактирования
    input  logic        rst,        // Сигнал сброса
    input  logic        push,       // Сигнал записи в стек
    input  logic        pop,        // Сигнал чтения из стека
    input  logic [15:0]  data_in,    // Входные данные
    output logic [15:0]  data_out,   // Выходные данные
    output logic        empty,      // Флаг пустого стека
    output logic        full        // Флаг полного стека
);

    logic [7:0] stack_mem [0:7]; // Память стека из 8 элементов
    logic [2:0] sp; // Указатель на вершину стека

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            sp <= 3'd7;          // Начальная инициализация указателя стека
            empty <= 1;          // Стек изначально пуст
            full <= 0;           // Стек не полон
        end else begin
            if (push && !pop && !full) begin
                // Обработка только push, если стек не полон
                stack_mem[sp] <= data_in;
                sp <= sp - 1;
                empty <= 0;      // Стек теперь не пуст
                if (sp == 0) full <= 1; // Если указатель на нуле, стек полон
            end else if (pop && !push && !empty) begin
                // Обработка только pop, если стек не пуст
                sp <= sp + 1;
                data_out <= stack_mem[sp];
                full <= 0;       // Стек теперь не полон
                if (sp == 3'd7) empty <= 1; // Если указатель достиг 7, стек пуст
            end
        end
    end
endmodule
