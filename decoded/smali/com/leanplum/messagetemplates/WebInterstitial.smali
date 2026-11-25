.class public Lcom/leanplum/messagetemplates/WebInterstitial;
.super Lcom/leanplum/messagetemplates/BaseMessageDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/leanplum/messagetemplates/WebInterstitialOptions;)V
    .locals 2

    .prologue
    .line 23
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/leanplum/messagetemplates/BaseMessageDialog;-><init>(Landroid/app/Activity;ZLcom/leanplum/messagetemplates/a;Lcom/leanplum/messagetemplates/WebInterstitialOptions;)V

    .line 24
    iput-object p2, p0, Lcom/leanplum/messagetemplates/WebInterstitial;->b:Lcom/leanplum/messagetemplates/WebInterstitialOptions;

    .line 25
    return-void
.end method

.method public static register(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 28
    const-string/jumbo v0, "Web Interstitial"

    sget v1, Lcom/leanplum/Leanplum;->ACTION_KIND_MESSAGE:I

    sget v2, Lcom/leanplum/Leanplum;->ACTION_KIND_ACTION:I

    or-int/2addr v1, v2

    invoke-static {p0}, Lcom/leanplum/messagetemplates/WebInterstitialOptions;->toArgs(Landroid/content/Context;)Lcom/leanplum/ActionArgs;

    move-result-object v2

    new-instance v3, Lcom/leanplum/messagetemplates/u;

    invoke-direct {v3}, Lcom/leanplum/messagetemplates/u;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/leanplum/Leanplum;->defineAction(Ljava/lang/String;ILcom/leanplum/ActionArgs;Lcom/leanplum/callbacks/ActionCallback;)V

    .line 44
    return-void
.end method
