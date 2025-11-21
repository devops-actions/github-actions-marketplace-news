---
title: L2TP/IPSec VPN Connect
date: 2025-11-21 13:01:34 +00:00
tags:
  - IGDevX
  - GitHub Actions
draft: false
repo: https://github.com/IGDevX/l2tp-ipsec-vpn-action
marketplace: https://github.com/marketplace/actions/l2tp-ipsec-vpn-connect
version: v2
dependentsNumber: "?"
---


Version updated for **https://github.com/IGDevX/l2tp-ipsec-vpn-action** to version **v2**.
- This action is used across all versions by **?** repositories.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/l2tp-ipsec-vpn-connect) to find the latest changes.

## Release notes

### v2.0.0 – L2TP/IPSec VPN Connect Action (Post-step Teardown)

**Summary:**
Adds mandatory **post-step VPN teardown** to automatically disconnect the VPN after the workflow step finishes. Users no longer need to call a separate disconnect action. Also includes guidance for routing traffic through the VPN interface.

**Features:**

* Automatically installs and configures **StrongSwan** and **xl2tpd**.
* Connects to an L2TP/IPSec VPN using provided credentials and PSK.
* Detects the PPP interface and exposes its IP and name as outputs for downstream steps.
* **Automatically disconnects the VPN** when the workflow step ends using a post-step (mandatory).
* Masks sensitive inputs like VPN password and PSK to keep secrets safe.
* Allows users to route specific traffic through the VPN using the `ppp_interface` output.
* Works on Ubuntu GitHub runners.

**Inputs:**

* `vpn_gateway` – VPN server address (required)
* `vpn_psk` – VPN pre-shared key (required)
* `vpn_username` – VPN username (required)
* `vpn_password` – VPN password (required)
* `vpn_nt_domain` – NT domain (required)
* `vpn_ike` – IKE proposal, e.g., `3des-sha1-modp1024` (required)
* `vpn_esp` – ESP proposal, e.g., `3des-sha1` (required)

**Outputs:**

* `ppp_interface` – The detected VPN interface name
* `ppp_ip` – The VPN interface IP address

**Installation / Usage:**
Use this action in your workflow to connect to your VPN and automatically disconnect when the step ends:

```yaml
- name: Connect to VPN
  uses: IGDevX/l2tp-ipsec-vpn-action@v1.1.0
  id: vpn
  with:
    vpn_gateway: ${{ secrets.VPN_GATEWAY }}
    vpn_psk: ${{ secrets.VPN_PSK }}
    vpn_username: ${{ secrets.VPN_USER }}
    vpn_password: ${{ secrets.VPN_PASSWORD }}
    vpn_nt_domain: "MYDOMAIN"
    vpn_ike: "3des-sha1-modp1024"
    vpn_esp: "3des-sha1"

- name: Show VPN interface
  run: |
    echo "PPP interface: ${{ steps.vpn.outputs.ppp_interface }}"
    echo "PPP IP: ${{ steps.vpn.outputs.ppp_ip }}"

- name: Configure VPN routes
  run: |
    HOST_IP=192.168.1.100  # the IP you want to reach through VPN
    IFACE=${{ steps.vpn.outputs.ppp_interface }}
    sudo ip route add "$HOST_IP" dev "$IFACE"
```

**Notes:**

* The VPN is **always disconnected automatically** after the step ends via the integrated post-step.
* Use the `ppp_interface` output to route traffic through the VPN.
* Tested on Ubuntu 24.04 GitHub runners.

**Full Changelog:**
[https://github.com/IGDevX/l2tp-ipsec-vpn-action/compare/v1...v2](https://github.com/IGDevX/l2tp-ipsec-vpn-action/compare/v1...v2)
