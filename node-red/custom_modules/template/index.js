module.exports = function(RED) {
    
    function Example(config) {
        RED.nodes.createNode(this,config);
        var node = this;
        node.on('input', function(msg) {
            
            //TODO: Do message stuff here
            node.send(msg);
        });
    }

    RED.nodes.registerType("{{modName}}",Example);
}