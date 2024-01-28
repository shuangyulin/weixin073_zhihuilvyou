const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm49085/",
            name: "ssm49085",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm49085/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "智慧旅游平台小程序"
        } 
    }
}
export default base
