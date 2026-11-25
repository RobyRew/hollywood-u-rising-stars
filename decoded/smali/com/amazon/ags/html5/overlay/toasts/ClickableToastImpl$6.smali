.class Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$6;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 376
    invoke-static {}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Entering runnable for hide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$6;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;

    invoke-static {v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;->access$000(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$6;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;

    invoke-static {v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;->access$700(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$6;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$6;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;->access$300(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;Z)V

    .line 384
    iget-object v0, p0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl$6;->this$0:Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;

    invoke-static {v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;->access$800(Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastObserver;

    .line 385
    invoke-interface {v0}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastObserver;->notifyToastDestroyed()V

    goto :goto_1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    invoke-static {}, Lcom/amazon/ags/html5/overlay/toasts/ClickableToastImpl;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Error removing view from window: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 387
    :cond_0
    return-void
.end method
