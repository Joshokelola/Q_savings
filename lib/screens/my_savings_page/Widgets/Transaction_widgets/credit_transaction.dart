import 'package:flutter/material.dart';

class CreditTransaction extends StatelessWidget {
  const CreditTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
         
          child: SizedBox(
            // color: Colors.blue,
            
            child: Column(
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Container(),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 250,
                      child: Wrap(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Top up for SafeLock',
                                style: TextStyle(
                                  // fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  fontFamily: 'Worksans',
                                ),
                              ),
                              Text(
                                'Date: Thu, 21 Apr 2022 9:18:39 GMT',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: 'Worksans',
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 29,
                    ),
                    const Expanded(
                      child: Text(
                        '\u{20A6}20000',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Worksans',
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Container(),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 250,
                      child: Wrap(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Quiiicksave Deposit [PG]. (Payment ID: QADXVJEBFBE34D)',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  fontFamily: 'Worksans',
                                ),
                              ),
                              Text(
                                'Date: Thu, 11 Apr 2022 10:18:39 GMT',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: 'Worksans',
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 39,
                    ),
                    const Expanded(
                      child: Text(
                        '\u{20A6}2000',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Worksans',
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Container(),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 250,
                      child: Wrap(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Quiiicksave Deposit [PG]. (Payment ID: VbDXVJEXEWBE34D)',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  fontFamily: 'Worksans',
                                ),
                              ),
                              Text(
                                'Date: Thu, 21 Mar 2022 12:18:39 GMT',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: 'Worksans',
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 39,
                    ),
                    const Expanded(
                      child: Text(
                        '\u{20A6}5000',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Worksans',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Container(),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: 250,
                      child: Wrap(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Quiiicksave Deposit [PG]. (Payment ID: QBDNVJIBFBE14D)',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  fontFamily: 'Worksans',
                                ),
                              ),
                              Text(
                                'Date: Thu, 11 Apr 2022 10:18:39 GMT',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontFamily: 'Worksans',
                                    color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 26,
                    ),
                    const Expanded(
                      child: Text(
                        '\u{20A6}10000',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Worksans',
                        ),
                      ),
                    )
                  ],
                ),
              const SizedBox(
                height: 20,
              ),
           
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
