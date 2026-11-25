.class public Lcom/leanplum/messagetemplates/CenterPopup;
.super Lcom/leanplum/messagetemplates/BaseMessageDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/leanplum/messagetemplates/CenterPopupOptions;)V
    .locals 2

    .prologue
    .line 22
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/leanplum/messagetemplates/BaseMessageDialog;-><init>(Landroid/app/Activity;ZLcom/leanplum/messagetemplates/a;Lcom/leanplum/messagetemplates/WebInterstitialOptions;)V

    .line 23
    iput-object p2, p0, Lcom/leanplum/messagetemplates/CenterPopup;->a:Lcom/leanplum/messagetemplates/a;

    .line 24
    return-void
.end method

.method public static register(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 27
    const-string/jumbo v0, "Center Popup"

    sget v1, Lcom/leanplum/Leanplum;->ACTION_KIND_MESSAGE:I

    sget v2, Lcom/leanplum/Leanplum;->ACTION_KIND_ACTION:I

    or-int/2addr v1, v2

    invoke-static {p0}, Lcom/leanplum/messagetemplates/CenterPopupOptions;->toArgs(Landroid/content/Context;)Lcom/leanplum/ActionArgs;

    move-result-object v2

    new-instance v3, Lcom/leanplum/messagetemplates/j;

    invoke-direct {v3}, Lcom/leanplum/messagetemplates/j;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/leanplum/Leanplum;->defineAction(Ljava/lang/String;ILcom/leanplum/ActionArgs;Lcom/leanplum/callbacks/ActionCallback;)V

    .line 49
    return-void
.end method
