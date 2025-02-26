function MyRegister({testfun}) {
    return ( 
        <div>
            <button onClick ={()=>testfun(20)}>Register</button>
        </div>

     );
}

export default MyRegister;