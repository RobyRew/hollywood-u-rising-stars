.class Lcom/amazon/ags/client/KindleFireSoftkeyBeachballManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/client/KindleFireSoftkeyBeachballManager;


# direct methods
.method constructor <init>(Lcom/amazon/ags/client/KindleFireSoftkeyBeachballManager;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/amazon/ags/client/KindleFireSoftkeyBeachballManager$1;->this$0:Lcom/amazon/ags/client/KindleFireSoftkeyBeachballManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "KindleFireSoftkeyBeachballManager"

    const-string/jumbo v1, "GameCircle softkey button pressed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/amazon/ags/client/KindleFireSoftkeyBeachballManager$1;->this$0:Lcom/amazon/ags/client/KindleFireSoftkeyBeachballManager;

    invoke-static {v0}, Lcom/amazon/ags/client/KindleFireSoftkeyBeachballManager;->access$000(Lcom/amazon/ags/client/KindleFireSoftkeyBeachballManager;)V

    .line 47
    return-void
.end method
