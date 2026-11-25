.class Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/ags/html5/javascript/domain/MessageHandlerReadyListener;


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;

.field final synthetic val$processedOverlayData:Ljava/lang/String;

.field final synthetic val$serviceFactory:Lcom/amazon/ags/html5/factory/ServiceFactory;

.field final synthetic val$webView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;Ljava/lang/String;Lcom/amazon/ags/html5/factory/ServiceFactory;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;

    iput-object p2, p0, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1;->val$processedOverlayData:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1;->val$serviceFactory:Lcom/amazon/ags/html5/factory/ServiceFactory;

    iput-object p4, p0, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1;->val$webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageHandlerReady()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1;->val$processedOverlayData:Ljava/lang/String;

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1;->val$serviceFactory:Lcom/amazon/ags/html5/factory/ServiceFactory;

    invoke-virtual {v1}, Lcom/amazon/ags/html5/factory/ServiceFactory;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1$1;-><init>(Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-static {}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Unexpected error occurred while processing alert message.  Alert will close."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/overlay/GameCircleAlertUserInterface;->finish()V

    goto :goto_0
.end method
