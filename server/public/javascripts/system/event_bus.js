const EventType = {
    VIEW_SONG:"viewSong",
    CREATE_SONG:"createSong"
};

class EventBus {
    constructor() {
        this.eventListeners = {};
    }

    addEventListener(type, listener) {
        this.eventListeners[type] = this.eventListeners[type] || [];
        for(var i=0;i<this.eventListeners[type].length;i++) {
            if(this.eventListeners[type][i] == listener) {
                return;
            }
        }
        this.eventListeners[type].push(listener);
    }

    dispatchEvent(event) {
        for(var i=0;i<this.eventListeners[event.type].length;i++) {
            this.eventListeners[event.type][i](event);
        }
    }
}