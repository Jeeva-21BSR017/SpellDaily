
const progressData = [
    {
        type: "full",
        cards: [
            {
                headers: ["DAY - 5", "DAY - 6", "DAY - 7", "DAY - 8", "DAY - 11", "DAY - 13"],
                words: [
                    { text: "Feburary", correct: false },
                    { text: "Feburary", correct: false },
                    { text: "Februray", correct: false },
                    { text: "February", correct: true },
                    { text: "February", correct: true },
                    { text: "February", correct: true }
                ],
                footer: "With steady practice, she achieved the correct spelling on Day 8",
                colClass: "col-6"
            }
        ]
    },
    {
        type: "full",
        cards: [
            {
                headers: ["DAY - 3", "DAY - 5", "DAY - 6", "DAY - 8"],
                words: [
                    { text: "Dafinately", correct: false },
                    { text: "Definiely", correct: false },
                    { text: "Definitely", correct: true },
                    { text: "Definitely", correct: true }
                ],
                footer: "From Day 6, she started to spell 'definitely' right!",
                colClass: "col-4"
            }
        ]
    },
    {
        type: "full",
        cards: [
            {
                headers: ["DAY - 5", "DAY - 6", "DAY - 9", "DAY - 11"],
                words: [
                    { text: "Foriegn", correct: false },
                    { text: "Foreign", correct: true },
                    { text: "Foreign", correct: true },
                    { text: "Foreign", correct: true }
                ],
                footer: "",
                colClass: "col-4"
            }
        ]
    },
    {
        type: "full",
        cards: [
            {
                headers: ["DAY - 5", "DAY - 6", "DAY - 9", "DAY - 11"],
                words: [
                    { text: "Foriegn", correct: false },
                    { text: "Foreign", correct: true },
                    { text: "Foreign", correct: true },
                    { text: "Foreign", correct: true }
                ],
                footer: "",
                colClass: "col-4"
            }
        ]
    },
    {
        type: "split",
        footer: "In the next attempts, she mastered these tricky words!",
        cards: [
            {
                headers: ["DAY - 5", "DAY - 6", "DAY - 9"],
                words: [
                    { text: "Ocuword", correct: false },
                    { text: "Awkward", correct: true },
                    { text: "Awkward", correct: true }
                ],
                colClass: "col-3"
            },
            {
                headers: ["DAY - 4", "DAY - 7", "DAY - 11"],
                words: [
                    { text: "Nasesaary", correct: false },
                    { text: "Necessary", correct: true },
                    { text: "Necessary", correct: true }
                ],
                colClass: "col-3"
            }
        ]
    }
];

const footerNoteText = "Note for Parents : Even mastered words can be misspelled. Regular practice and celebrating small wins help maintain progress!";
