.class Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;

.field final synthetic val$overlayInputData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1$1;->this$1:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;

    iput-object p2, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1$1;->val$overlayInputData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1$1;->this$1:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->val$webView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "javascript:handleOverlayData("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1$1;->val$overlayInputData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    invoke-static {}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Unexpected error occurred while loading data into overlay.  Overlay will close."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1$1;->this$1:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;

    iget-object v0, v0, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface$1;->this$0:Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/overlay/GameCircleUserInterface;->finish()V

    goto :goto_0
.end method
