.class final Lcom/leanplum/messagetemplates/s;
.super Lcom/leanplum/callbacks/VariablesChangedCallback;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/leanplum/messagetemplates/r;


# direct methods
.method constructor <init>(Lcom/leanplum/messagetemplates/r;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/leanplum/messagetemplates/s;->a:Lcom/leanplum/messagetemplates/r;

    invoke-direct {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final variablesChanged()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/leanplum/messagetemplates/Interstitial;

    invoke-static {}, Lcom/leanplum/LeanplumActivityHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/leanplum/messagetemplates/InterstitialOptions;

    iget-object v3, p0, Lcom/leanplum/messagetemplates/s;->a:Lcom/leanplum/messagetemplates/r;

    iget-object v3, v3, Lcom/leanplum/messagetemplates/r;->a:Lcom/leanplum/ActionContext;

    invoke-direct {v2, v3}, Lcom/leanplum/messagetemplates/InterstitialOptions;-><init>(Lcom/leanplum/ActionContext;)V

    invoke-direct {v0, v1, v2}, Lcom/leanplum/messagetemplates/Interstitial;-><init>(Landroid/app/Activity;Lcom/leanplum/messagetemplates/InterstitialOptions;)V

    .line 42
    invoke-virtual {v0}, Lcom/leanplum/messagetemplates/Interstitial;->show()V

    .line 43
    return-void
.end method
