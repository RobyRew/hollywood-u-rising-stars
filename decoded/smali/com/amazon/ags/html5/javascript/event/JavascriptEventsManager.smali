.class public Lcom/amazon/ags/html5/javascript/event/JavascriptEventsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/ags/html5/javascript/event/JavascriptEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ags/html5/javascript/event/JavascriptEventsManager;->listeners:Ljava/util/Map;

    .line 16
    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lcom/amazon/ags/html5/javascript/event/JavascriptEventListener;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/event/JavascriptEventsManager;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public notifyListeners(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amazon/ags/html5/javascript/event/JavascriptEventsManager;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/html5/javascript/event/JavascriptEventListener;

    .line 20
    invoke-interface {v0, p1}, Lcom/amazon/ags/html5/javascript/event/JavascriptEventListener;->onJavascriptEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method
