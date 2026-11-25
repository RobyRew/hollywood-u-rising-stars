.class public Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;
.super Lcom/sponsorpay/publisher/mbe/mediation/a;
.source "SourceFile"

# interfaces
.implements Lcom/jirbo/adcolony/aa;
.implements Lcom/jirbo/adcolony/ax;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/publisher/mbe/mediation/a",
        "<",
        "Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;",
        ">;",
        "Lcom/jirbo/adcolony/aa;",
        "Lcom/jirbo/adcolony/ax;"
    }
.end annotation


# static fields
.field private static final CONFIRMATION_DIALOG:Ljava/lang/String; = "with.confirmation.dialog"


# instance fields
.field private mActivityRef:Landroid/app/Activity;

.field private mIsAdColonyVideoAvailabile:Z

.field private mShouldShowConfirmationDialog:Ljava/lang/Boolean;

.field private mV4VCAd:Lcom/jirbo/adcolony/au;

.field private mVideoZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sponsorpay/mediation/adcolony/AdColonyMediationAdapter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/sponsorpay/publisher/mbe/mediation/a;-><init>(Lcom/sponsorpay/mediation/SPMediationAdapter;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mIsAdColonyVideoAvailabile:Z

    .line 45
    invoke-static {p0}, Lcom/jirbo/adcolony/t;->a(Lcom/jirbo/adcolony/ax;)V

    .line 46
    invoke-direct {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->shouldShowConfirmationDialog()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    .line 47
    iput-object p2, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mVideoZoneIds:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    .line 49
    iput-object p3, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mActivityRef:Landroid/app/Activity;

    .line 50
    return-void
.end method

.method private initRewardedVideo()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mVideoZoneIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 118
    :cond_0
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mVideoZoneIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    iget-object v3, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got zone id for rewarded video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sponsorpay/c/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mActivityRef:Landroid/app/Activity;

    invoke-static {v1}, Lcom/jirbo/adcolony/t;->a(Landroid/app/Activity;)V

    .line 128
    new-instance v1, Lcom/jirbo/adcolony/au;

    invoke-direct {v1, v0}, Lcom/jirbo/adcolony/au;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/jirbo/adcolony/au;->a(Lcom/jirbo/adcolony/aa;)Lcom/jirbo/adcolony/au;

    move-result-object v0

    iput-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/au;

    .line 129
    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private shouldShowConfirmationDialog()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "with.confirmation.dialog"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public maintainAvailability(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mIsAdColonyVideoAvailabile:Z

    .line 138
    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Video is not available"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_0
    return-void
.end method

.method public onAdColonyAdAttemptFinished(Lcom/jirbo/adcolony/y;)V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/jirbo/adcolony/y;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->notifyVideoError()V

    .line 96
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/au;

    .line 97
    invoke-static {}, Lcom/jirbo/adcolony/t;->c()V

    .line 98
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->notifyCloseEngagement()V

    goto :goto_0
.end method

.method public onAdColonyAdStarted(Lcom/jirbo/adcolony/y;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->notifyVideoStarted()V

    .line 105
    :cond_0
    return-void
.end method

.method public onAdColonyV4VCReward(Lcom/jirbo/adcolony/ay;)V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p1}, Lcom/jirbo/adcolony/ay;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->setVideoPlayed()V

    .line 86
    :cond_0
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/au;

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p1}, Lcom/jirbo/adcolony/t;->a(Landroid/app/Activity;)V

    .line 71
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/au;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/au;->l()V

    .line 72
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->notifyVideoStarted()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->notifyVideoError()V

    goto :goto_0
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->initRewardedVideo()V

    .line 58
    iget-boolean v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mIsAdColonyVideoAvailabile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/au;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/au;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/e;->g:Lcom/sponsorpay/publisher/mbe/mediation/e;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->sendValidationEvent(Lcom/sponsorpay/publisher/mbe/mediation/e;)V

    .line 60
    iget-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/au;

    iget-object v1, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/au;->c(Z)Lcom/jirbo/adcolony/au;

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->mV4VCAd:Lcom/jirbo/adcolony/au;

    .line 63
    sget-object v0, Lcom/sponsorpay/publisher/mbe/mediation/e;->b:Lcom/sponsorpay/publisher/mbe/mediation/e;

    invoke-virtual {p0, v0}, Lcom/sponsorpay/mediation/adcolony/mbe/AdColonyVideoMediationAdapter;->sendValidationEvent(Lcom/sponsorpay/publisher/mbe/mediation/e;)V

    goto :goto_0
.end method
