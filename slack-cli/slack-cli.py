#!/usr/bin/env python

import os
import fire
import slack


class SlackCli(slack.WebClient):
    pass


if __name__ == '__main__':
    slack_cli = SlackCli(token=os.environ['SLACK_API_TOKEN'])
    fire.Fire(slack_cli)
