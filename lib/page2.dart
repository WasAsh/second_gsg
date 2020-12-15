import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('STYLISH' , style: TextStyle(color: Colors.black , fontSize: 12),),
            IconButton(
              icon: Icon(Icons.dehaze , color: Colors.black, size: 16,),
              onPressed: (){},
            )
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart , size: 16 , color: Colors.black,),
            onPressed: (){},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/imgs/122792820_682684325976768_5572997483864000622_n.jpg'),
                    radius: 45,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('1,233' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
                              SizedBox(height: 5,),
                              Text('posts' , style: TextStyle(color: Colors.grey , fontSize: 12),),
                            ],
                          ),
                          SizedBox(width: 25,) ,
                          Column(
                            children: [
                              Text('4m' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
                              SizedBox(height: 5,),
                              Text('followers' , style: TextStyle(color: Colors.grey , fontSize: 12),),
                            ],
                          ),
                          SizedBox(width: 25,) ,
                          Column(
                            children: [
                              Text('333' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),),
                              SizedBox(height: 5,),
                              Text('following' , style: TextStyle(color: Colors.grey , fontSize: 12),),
                            ],
                          ),
                        ],
                      ),
                       SizedBox(height: 10,) ,
                       Container(
                          width: 190,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[200],
                          ),
                          child: FlatButton(
                            child: Text('Edit Profile' , style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                            onPressed: (){},
                          ),
                        ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Text(
                'Home Furniture' ,
                style: TextStyle(
                  fontSize: 12 ,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6,),
              Text(
                'Home accessories , some info about us' ,
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 12 ,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6,),
              Text(
                'Contact Us:' ,
                style: TextStyle(
                  fontSize: 14 ,
                ),
              ),
              SizedBox(height: 2,),
              Text(
                '+9724574584695' ,
                style: TextStyle(
                  fontSize: 12 ,
                  color: Colors.blue
                ),
              ),
              SizedBox(height: 6,),
              Text(
                'Gaza, Palestine' ,
                style: TextStyle(
                  fontSize: 14 ,
                  color: Colors.grey[400],
                ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: FlatButton(
                      child: Text('Add Product' , style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                      onPressed: (){},
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: FlatButton(
                      child: Text('Share' , style: TextStyle(fontSize: 12 ,color: Colors.grey),),
                      onPressed: (){},
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: FlatButton(
                      child: Text('Contact Us' , style: TextStyle(fontSize: 12 , color: Colors.grey),),
                      onPressed: (){},
                    ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey[300],
              ),
              SizedBox(height: 5,) ,
              SingleChildScrollView(
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3 ,
                    crossAxisSpacing: 2
                  ),
                  itemBuilder: (context , index){
                    return Container(
                      width: 50,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage('assets/imgs/122792820_682684325976768_5572997483864000622_n.jpg')
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home) ,
            title: Text('') ,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('') ,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text('') ,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('') ,
          ),
        ],
      ),
    );
  }
}
